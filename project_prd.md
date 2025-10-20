# Product Requirements Document (PRD)
## Lavescape UI - Skill Test Assessment

---

## 1. Project Overview

### 1.1 Project Name
Lavescape - Travel Experience Discovery App UI

### 1.2 Purpose
Build a high-fidelity UI prototype of the Lavescape mobile application with static data to demonstrate front-end development skills, attention to design detail, and ability to create responsive, modern interfaces.

### 1.3 Scope
Create a functional UI-only prototype covering key user flows: authentication, exploration, search, and experience details. All data will be static/mocked.

---

## 2. Objectives

### 2.1 Primary Goals
- Demonstrate pixel-perfect UI implementation
- Showcase responsive design capabilities
- Display component architecture skills
- Prove attention to UX details and interactions

### 2.2 Success Criteria
- UI matches provided design specifications
- Smooth navigation between screens
- Clean, maintainable code structure
- Responsive across different screen sizes
- Professional presentation quality

---

## 3. Technical Specifications

### 3.1 Technology Stack
**Primary:**
- Flutter 3.x+
- Dart 3.0+

**Additional Packages:**
- google_fonts (for custom fonts)
- flutter_svg (for SVG icons)
- intl (for date formatting)
- carousel_slider (for image carousels)
- cached_network_image (for image handling)

### 3.2 Platform
- Android & iOS
- Target screen sizes: 375px - 428px width (mobile)
- Support for both portrait orientations

### 3.3 Flutter Setup
- Material Design 3
- Minimum SDK: Android 21+ (Lollipop), iOS 12+
- State Management: Provider / Riverpod / Bloc (choose one)

---

## 4. Design System

### 4.1 Color Palette
- **Primary:** Purple gradient (#8B5CF6 to #7C3AED)
- **Secondary:** White (#FFFFFF)
- **Background:** Light gray (#F9FAFB)
- **Text Primary:** Dark gray/Black (#111827)
- **Text Secondary:** Medium gray (#6B7280)
- **Accent:** Bright purple (#A855F7)

### 4.2 Typography
- **Font Family:** System default (San Francisco for iOS, Roboto for Android) or Inter/Poppins
- **Heading 1:** 28-32px, Bold
- **Heading 2:** 20-24px, Semi-bold
- **Body:** 14-16px, Regular
- **Caption:** 12-14px, Regular

### 4.3 Spacing
- Base unit: 4px
- Standard spacing: 8px, 16px, 24px, 32px
- Card padding: 16px
- Screen padding: 20px horizontal

### 4.4 Components
- Rounded corners: 12-16px for cards, 8px for buttons
- Button height: 48-52px
- Input field height: 48-52px
- Bottom navigation height: 60-70px

---

## 5. Feature Requirements

### 5.1 Authentication Flow

#### 5.1.1 Sign Up Screen
**Requirements:**
- Display Lavescape logo and branding
- Welcome message: "Welcome to Lavescape"
- Tagline about the service
- Phone number input field with country code selector
- "Continue" button (purple gradient)
- Terms and conditions text with clickable links
- Bottom navigation placeholder

**Acceptance Criteria:**
- Phone input validates format visually
- Button has hover/active states
- Smooth transition to OTP screen

#### 5.1.2 OTP Verification Screen
**Requirements:**
- "Verify Number" heading
- Confirmation message showing phone number
- OTP input (6 digits preferred or custom design)
- "Submit" button
- "Resend OTP" link with timer (static countdown)
- Back navigation option

**Acceptance Criteria:**
- OTP inputs are clearly visible
- Auto-focus behavior on inputs (optional)
- Submit button activates after input

#### 5.1.3 Profile Setup Screen
**Requirements:**
- "Finish Signing Up" heading
- User name input field
- Legal name input field
- Email input field
- Password input field with visibility toggle
- "Create Profile" button
- Skip option (optional)

**Acceptance Criteria:**
- Input validation indicators
- Password visibility toggle works
- Form fields have proper keyboard types
- Smooth transition to home screen

### 5.2 Explore/Home Screen

#### 5.2.1 Main Feed
**Requirements:**
- Top app bar with Lavescape logo
- Search bar with placeholder "Where to?"
- Category icons row (scrollable horizontally):
  - Beach, Mountain, Desert, City, etc.
- Featured experiences card list:
  - High-quality image
  - Location name
  - Price (with currency)
  - Rating (stars/number)
  - "Featured" or category badge
- Bottom navigation with 5 tabs:
  - Home, Search, Favorites, Messages, Profile

**Acceptance Criteria:**
- Cards are tappable with visual feedback
- Horizontal scroll works smoothly
- Images load properly (use static assets)
- Bottom navigation highlights active tab
- Pull-to-refresh indicator (optional)

### 5.3 Search Flow

#### 5.3.1 Search Input Screen
**Requirements:**
- Back button
- Large search input field
- Recent searches section (with static data)
- Popular destinations list with icons
- Category chips/tags

**Acceptance Criteria:**
- Keyboard appears automatically
- Search input has focus state
- Recent items are dismissible (UI only)
- Smooth transitions

#### 5.3.2 Search Filters Screen
**Requirements:**
- Location/destination selector
- Date range picker (calendar view)
- Price range slider
- Category/activity type checkboxes
- "Apply Filters" button
- "Clear All" option

**Acceptance Criteria:**
- Date picker modal works properly
- Calendar shows current month
- Selected dates are highlighted
- Price slider is interactive
- Filter count badge shows on apply

#### 5.3.3 Search Results Screen
**Requirements:**
- Results count header
- Filter chips (removable)
- Grid layout (2 columns) or List view toggle
- Experience cards with:
  - Image
  - Title
  - Location
  - Price
  - Rating
- Map view toggle button

**Acceptance Criteria:**
- Grid layout is responsive
- Cards maintain aspect ratio
- Smooth scrolling
- Empty state if no results

#### 5.3.4 Map View Screen
**Requirements:**
- Full-screen map with markers
- Location pins for experiences
- Price tags on pins
- Selected experience card at bottom
- List view toggle

**Acceptance Criteria:**
- Static map image or use Google Maps (with API key)
- Markers are interactive
- Bottom sheet shows experience details
- Smooth transitions between views

### 5.4 Experience Detail Screen

#### 5.4.1 Detail View
**Requirements:**
- Image carousel (swipeable)
- Back button and share/favorite icons
- Experience title and location
- Rating and review count
- Price per person/night
- Host/guide information with avatar
- Description text (expandable)
- Amenities/features list with icons
- "Book Now" or "Reserve" button
- Reviews section preview

**Acceptance Criteria:**
- Image carousel swipes smoothly
- Hero animation from list (optional)
- Favorite button toggles state
- Book button is fixed at bottom
- Text expansion works properly

---

## 6. Static Data Structure

### 6.1 Experience Model
```dart
class Experience {
  final String id;
  final String title;
  final String location;
  final double price;
  final String currency;
  final double rating;
  final int reviewCount;
  final String imageUrl;
  final String category;
  final bool isFeatured;
  final String description;
  final List<String> amenities;
  final Host host;
}
```

### 6.2 Sample Data
Create JSON files or Dart constants with at least:
- 10-15 experiences
- 5-7 categories
- 3-5 locations
- 3-5 recent searches
- 2-3 host profiles

---

## 7. Navigation Structure

### 7.1 Route Map
```
/ (Root)
├── /auth
│   ├── /signup
│   ├── /verify-otp
│   └── /complete-profile
├── /home (Bottom Nav)
│   ├── /explore (default)
│   ├── /search
│   ├── /favorites
│   ├── /messages
│   └── /profile
├── /search-flow
│   ├── /search-input
│   ├── /search-filters
│   ├── /search-results
│   └── /map-view
└── /experience/:id
```

---

## 8. Flutter Project Structure

### 8.1 Folder Structure
```
lib/
├── main.dart
├── app.dart
├── core/
│   ├── constants/
│   │   ├── colors.dart
│   │   ├── text_styles.dart
│   │   └── dimensions.dart
│   ├── theme/
│   │   └── app_theme.dart
│   └── utils/
│       └── helpers.dart
├── data/
│   ├── models/
│   │   ├── experience.dart
│   │   ├── user.dart
│   │   └── category.dart
│   └── mock/
│       └── mock_data.dart
├── presentation/
│   ├── screens/
│   │   ├── auth/
│   │   ├── home/
│   │   ├── search/
│   │   └── detail/
│   └── widgets/
│       ├── common/
│       ├── cards/
│       └── inputs/
└── routes/
    └── app_router.dart
```

---

## 9. Development Phases

### Phase 1: Setup & Foundation (2-3 hours)
- [ ] Initialize Flutter project
- [ ] Set up folder structure
- [ ] Configure theme and colors
- [ ] Create mock data
- [ ] Set up routing

### Phase 2: Authentication Flow (2-3 hours)
- [ ] Build sign up screen
- [ ] Build OTP verification screen
- [ ] Build profile completion screen
- [ ] Implement navigation between auth screens

### Phase 3: Explore/Home Screen (2-3 hours)
- [ ] Build app bar and search bar
- [ ] Create category horizontal list
- [ ] Build experience card component
- [ ] Implement bottom navigation
- [ ] Add card grid/list layout

### Phase 4: Search Flow (2-3 hours)
- [ ] Build search input screen
- [ ] Create filter screen with date picker
- [ ] Build search results grid
- [ ] Add map view screen
- [ ] Connect filter logic (UI only)

### Phase 5: Detail Screen (1-2 hours)
- [ ] Build image carousel
- [ ] Add experience details layout
- [ ] Create amenities section
- [ ] Add booking button

### Phase 6: Polish & Testing (1-2 hours)
- [ ] Add animations and transitions
- [ ] Test on different screen sizes
- [ ] Fix UI bugs
- [ ] Add hero animations
- [ ] Final review

**Total Estimated Time: 10-16 hours**

---

## 10. Key Flutter Widgets to Use

### 10.1 Layout Widgets
- `Scaffold` - Screen structure
- `AppBar` - Top bars
- `BottomNavigationBar` - Navigation
- `Column`, `Row` - Layout
- `Stack` - Overlays
- `ListView`, `GridView` - Scrollable lists
- `PageView` - Carousels
- `SliverAppBar` - Collapsible headers

### 10.2 Input Widgets
- `TextField` - Text input
- `DropdownButton` - Selectors
- `Checkbox`, `Radio` - Selection
- `Slider` - Range selection
- `DatePicker` - Date selection

### 10.3 Visual Widgets
- `Card` - Container cards
- `Image.asset`, `Image.network` - Images
- `Icon` - Icons
- `CircleAvatar` - Profile pictures
- `Chip` - Tags and filters
- `Badge` - Notifications

### 10.4 Decorations
- `BoxDecoration` - Gradients, borders, shadows
- `BorderRadius` - Rounded corners
- `LinearGradient` - Purple gradient
- `BoxShadow` - Card shadows

---

## 11. Design Specifications

### 11.1 Purple Gradient
```dart
LinearGradient(
  colors: [Color(0xFF8B5CF6), Color(0xFF7C3AED)],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
)
```

### 11.2 Text Styles
```dart
// Heading 1
TextStyle(fontSize: 28, fontWeight: FontWeight.bold)

// Heading 2
TextStyle(fontSize: 20, fontWeight: FontWeight.w600)

// Body
TextStyle(fontSize: 16, fontWeight: FontWeight.normal)

// Caption
TextStyle(fontSize: 14, color: Colors.grey)
```

### 11.3 Button Style
```dart
ElevatedButton.styleFrom(
  backgroundColor: Color(0xFF8B5CF6),
  minimumSize: Size(double.infinity, 52),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(12),
  ),
)
```

---

## 12. Deliverables

### 12.1 Code
- [ ] Complete Flutter project
- [ ] Clean, commented code
- [ ] Organized folder structure
- [ ] README with setup instructions

### 12.2 Documentation
- [ ] Screenshots of all screens
- [ ] Screen recording/GIF of app flow
- [ ] Brief explanation of architectural decisions

### 12.3 Optional Enhancements
- [ ] Hero animations between screens
- [ ] Pull-to-refresh
- [ ] Skeleton loading screens
- [ ] Error states
- [ ] Dark mode support

---

## 13. Quality Checklist

### 13.1 Functionality
- [ ] All screens are navigable
- [ ] Buttons have visual feedback
- [ ] Forms validate inputs (visual only)
- [ ] Smooth animations
- [ ] No crashes or errors

### 13.2 Design
- [ ] Matches provided screenshots
- [ ] Consistent spacing and alignment
- [ ] Proper use of colors
- [ ] Readable text sizes
- [ ] Professional appearance

### 13.3 Code Quality
- [ ] Clean code structure
- [ ] Reusable components
- [ ] Proper naming conventions
- [ ] No hardcoded values (use constants)
- [ ] Comments where needed

### 13.4 Performance
- [ ] Smooth scrolling
- [ ] Fast navigation
- [ ] Optimized images
- [ ] No lag or jank

---

## 14. Evaluation Criteria

### 14.1 Assessment Areas (Assumed)
- **UI/UX Implementation (40%)** - Pixel-perfect design, responsiveness
- **Code Quality (30%)** - Structure, readability, best practices
- **Functionality (20%)** - Navigation, interactions, completeness
- **Attention to Detail (10%)** - Animations, polish, professional finish

---

## 15. Timeline

**Recommended Schedule:**
- Day 1 (6-8 hours): Setup, Auth flow, Home screen
- Day 2 (4-6 hours): Search flow, Detail screen, Polish

**Total Duration: 1-2 days**

---

## 16. Resources Needed

### 16.1 Assets
- Lavescape logo (extract from screenshots or create placeholder)
- Experience images (use stock photos from Unsplash/Pexels)
- Icons (use Material Icons or custom SVGs)
- User avatars (use placeholders)

### 16.2 Tools
- Flutter SDK 3.x+
- Android Studio / VS Code
- Android Emulator / iOS Simulator
- Figma/Sketch (for reference)

---

## 17. Success Metrics

- ✅ All 12-15 screens implemented
- ✅ Smooth navigation flow
- ✅ Design matches reference 90%+
- ✅ Zero crashes during demo
- ✅ Code is clean and organized
- ✅ Professional presentation quality

---

**Document Version:** 1.0  
**Last Updated:** October 20, 2025  
**Platform:** Flutter (Android & iOS)