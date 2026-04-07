/**
 * Copyright (c) 2023-present Plane Software, Inc. and contributors
 * SPDX-License-Identifier: AGPL-3.0-only
 * See the LICENSE file for details.
 */

// cloudplane imports
import type { TEditorAsset } from "@cloudplane/editor";
// store
import type { TPageInstance } from "@/store/pages/base-page";

export type TAdditionalPageNavigationPaneAssetItemProps = {
  asset: TEditorAsset;
  assetSrc: string;
  assetDownloadSrc: string;
  page: TPageInstance;
};

export function AdditionalPageNavigationPaneAssetItem(_props: TAdditionalPageNavigationPaneAssetItemProps) {
  return null;
}
