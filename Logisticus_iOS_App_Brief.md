# Logisticus iOS App Brief

## Context note
Attempted to access https://logisticusgroup.com/ for reference, but the request returned `403 Forbidden` in this environment. This brief is therefore based on standard logistics and routing workflows for mobile field staff, with placeholders for Logisticus brand styling.

## Product overview
**App name:** Logisticus Route Estimate (working title)

**Purpose:** Enable mobile workers to capture and document route planning cost estimates in the field quickly, consistently, and with audit-ready detail for large, complex renewable energy transportation. The app focuses on guided data capture, lightweight route planning, and producing a shareable estimate summary.

## Target users
- **Mobile route planners / dispatchers** performing on-site assessments for renewable energy cargo.
- **Field supervisors** capturing ad‑hoc route cost estimates for oversize/overweight moves.
- **Operations managers** reviewing and approving complex transport estimates.

## Goals
- Reduce time to produce a route estimate.
- Standardize estimate data across teams.
- Provide offline-first capture with later sync.
- Generate a clear, shareable estimate summary.
- Ensure clearance checks for oversized renewable energy equipment.

## Core workflows
1. **Create estimate** → select customer and job type.
2. **Define route** → add origin, stops, destination.
3. **Enter constraints** → vehicle type, capacity, time windows, service durations.
4. **Check clearances** → capture underpass heights with camera or manual entry.
5. **Cost inputs** → labor, fuel, tolls, equipment, overhead.
6. **Review & export** → summary with assumptions and totals.
7. **Submit for approval** → optional approval workflow.

## Key screens (iOS)
1. **Home / Dashboard**
   - Quick actions: New Estimate, Resume Drafts
   - Recent estimates list
   - Sync status indicator

2. **Estimate Details**
   - Customer name, job reference, date
   - Estimate type (one‑time / recurring)
   - Assumptions and notes

3. **Route Planner (Stops list)**
   - Add stop (address, contact, service time)
   - Reorder stops (drag & drop)
   - Time window per stop
   - Map preview (optional if online)

4. **Vehicle & Constraints**
   - Vehicle type (heavy haul, multi-axle, escort required)
   - Capacity (weight/volume)
   - Special handling (oversize, overlength, escort, crane)
   - Driver hours constraints
   - Renewable energy equipment class (blades, tower segments, nacelles)

5. **Cost Inputs**
   - Labor (hours, rate)
   - Fuel (distance, mpg, price)
   - Tolls / permits
   - Equipment / rental
   - Overhead / margin

6. **Estimate Summary**
   - Total cost
   - Line items breakdown
   - Key assumptions
   - Export options (PDF, share link)

7. **Clearance Checker (Underpass Heights)**
   - Camera-based capture with AR overlay to estimate clearance height
   - Manual override to enter posted height
   - Save clearance check with photo, location, and timestamp

8. **Approval & Status**
   - Status: Draft → Submitted → Approved/Rejected
   - Approver comments

## Data fields (suggested)
**Estimate metadata**
- Customer name, contact
- Job reference / PO
- Start date, end date (if recurring)
- Created by, timestamp

**Route**
- Origin address
- Stops (address, service time, time window)
- Destination address
- Total distance (if online lookup)
- Known clearance constraints (height)
- Underpass check photos/measurements
- Permit corridors and escort requirements

**Cost inputs**
- Labor hours, rate
- Fuel distance, mpg, cost per gallon
- Tolls and permits
- Equipment fees
- Other costs
- Margin percentage

**Outputs**
- Total cost
- Cost per mile / stop
- PDF summary

## Offline-first behavior
- All data stored locally until sync.
- Sync queue with retry and conflict resolution.
- Visible status badges (draft, pending sync, synced).

## Non-functional requirements
- iOS 16+
- Fast creation flow (< 3 minutes typical)
- Role-based access (field vs manager)
- Secure storage (Keychain for auth)
- Audit logs for approvals
- Camera access with on-device measurement guidance

## Visual design (Logisticus look & feel)
Because the Logisticus website could not be accessed in this environment, apply the following as placeholders until official brand assets are provided:
- Use a clean, professional logistics aesthetic with strong contrast.
- Prefer a bold primary color, a neutral secondary, and high-visibility accent for statuses.
- Emphasize large, legible typography for field use.
- Incorporate subtle map/route motifs in empty states and headers.

## Future enhancements
- Integration with TMS / ERP.
- Real-time route optimization.
- OCR for scanned documents.
- Analytics dashboard for cost variance.
- Automatic clearance detection from DOT databases (if available).

## Deliverables (initial)
- UX flow map
- iOS wireframes
- API requirements for estimates and approvals
- Export template (PDF)
