interface ScrollStatus {
  isOnTop: boolean;
  isScrollUp: boolean;
  lastScrollY: number;
}

export const useScrollStatus = () =>
  useState<ScrollStatus>("scrollStatus", () =>
    reactive({
      isOnTop: true,
      isScrollUp: false,
      lastScrollY: 0,
    })
  );
