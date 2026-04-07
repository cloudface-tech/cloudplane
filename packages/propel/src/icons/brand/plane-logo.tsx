/**
 * Copyright (c) 2023-present Plane Software, Inc. and contributors
 * SPDX-License-Identifier: AGPL-3.0-only
 * See the LICENSE file for details.
 */

import * as React from "react";

import type { ISvgIcons } from "../type";

export function PlaneLogo({ width = "64", height = "64", className, color = "currentColor" }: ISvgIcons) {
  return (
    <svg
      width={width}
      height={height}
      viewBox="0 0 64 64"
      fill="none"
      xmlns="http://www.w3.org/2000/svg"
      className={className}
    >
      <path
        d="M50 40a8 8 0 0 0-1.17-16.94A11 11 0 0 0 28.5 19a10 10 0 0 0-13.37 9.43A8.5 8.5 0 0 0 16 45h26a8 8 0 0 0 8-5z"
        fill={color}
      />
      <path d="M38 22 L42 26 L30 38 L26 34 Z" fill="white" />
      <path d="M40 24 L47 18 L41 28 Z" fill="white" />
      <path d="M29 36 L22 42 L28 32 Z" fill="white" />
      <path d="M27 35 L22 38 L28 38 Z" fill="white" />
    </svg>
  );
}
