# Logisticus iOS App Brief

## Context note
Attempted to access https://logisticusgroup.com/ for reference, but the request returned `403 Forbidden` in this environment. This brief is therefore based on standard logistics and routing workflows for mobile field staff, with placeholders for Logisticus brand styling.

## Product overview
**App name:** Logisticus Route Estimate (working title)

**Purpose:** Enable mobile workers to capture and document route planning cost estimates for renewable energy and other large, complex transportation moves. The app focuses on guided data capture, heavy/oversize constraints, and producing a shareable estimate summary with clearance validation.

## Target users
- **Mobile route planners / dispatchers** performing on-site assessments.
- **Field supervisors** capturing ad‑hoc route cost estimates.
- **Operations managers** reviewing and approving estimates.
- **Renewable energy logistics teams** moving turbines, blades, nacelles, and transformers.

## Goals
- Reduce time to produce a route estimate.
- Standardize estimate data across teams.
- Provide offline-first capture with later sync.
- Generate a clear, shareable estimate summary.
- Capture oversize/overweight constraints and renewable cargo requirements.

## Core workflows
1. **Create estimate** → select customer and job type.
2. **Define route** → add origin, stops, destination.
3. **Enter constraints** → vehicle type, capacity, time windows, service durations.
4. **Check clearances** → capture underpass heights with camera or manual entry.
5. **Cost inputs** → labor, fuel, tolls, escort vehicles, equipment, overhead.
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
   - Vehicle type (van, box truck, tractor‑trailer)
   - Capacity (weight/volume)
   - Special handling (hazmat, refrigerated, liftgate)
   - Oversize/overweight permits and escorts
   - Renewable energy cargo profile (blade/nacelle/transformer)
   - Driver hours constraints

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
- Cargo category (wind/solar/storage)
- Oversize/overweight class
- Start date, end date (if recurring)
- Created by, timestamp

**Route**
- Origin address
- Stops (address, service time, time window)
- Destination address
- Total distance (if online lookup)
- Known clearance constraints (height)
- Underpass check photos/measurements

**Cost inputs**
- Labor hours, rate
- Fuel distance, mpg, cost per gallon
- Tolls and permits
- Escort vehicles
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
