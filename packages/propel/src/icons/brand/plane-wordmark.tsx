/**
 * Copyright (c) 2023-present Plane Software, Inc. and contributors
 * SPDX-License-Identifier: AGPL-3.0-only
 * See the LICENSE file for details.
 */

import * as React from "react";

import type { ISvgIcons } from "../type";

export function PlaneWordmark({ width = "160", height = "32", className, color = "currentColor" }: ISvgIcons) {
  return (
    <svg
      width={width}
      height={height}
      viewBox="0 0 160 32"
      fill="none"
      xmlns="http://www.w3.org/2000/svg"
      className={className}
    >
      <text
        x="0"
        y="24"
        fontFamily="Inter, system-ui, -apple-system, sans-serif"
        fontWeight="700"
        fontSize="24"
        fill={color}
      >
        CloudPlane
      </text>
    </svg>
  );
}
