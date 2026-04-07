# CloudPlane

Open-source project management tool by [CloudFace](https://cloudface.tech).

CloudPlane is a fork of [Plane](https://github.com/makeplane/plane) v1.3.0, fully rebranded with the CloudFace Design System.

## Features

- Work Items (Issues) with custom fields, labels, priorities
- Cycles (Sprints) with burndown charts
- Modules for feature grouping
- Pages/Docs with real-time collaboration
- Views with custom filters and grouping
- Analytics and insights
- Multiple layout views: List, Board, Spreadsheet, Gantt, Calendar

## Tech Stack

- **Frontend:** Next.js, React, Tailwind CSS, MobX
- **Backend:** Django, Django REST Framework, Celery
- **Realtime:** Node.js, Hocuspocus (Yjs CRDT)
- **Database:** PostgreSQL, Redis, RabbitMQ
- **Storage:** MinIO (S3-compatible)

## Quick Start

```bash
git clone https://github.com/cloudface-tech/cloudplane.git
cd cloudplane
cp .env.example .env
bash setup.sh
docker compose -f docker-compose-local.yml up -d
```

## License

AGPL-3.0 — see [LICENSE.txt](LICENSE.txt).

## Credits

CloudPlane is based on [Plane](https://github.com/makeplane/plane) by [makeplane](https://github.com/makeplane). Original work is Copyright (c) 2023-present Plane Software, Inc.
