# syntax=docker/dockerfile:1
# The base has the toolchain, alixea-pm and the entrypoint that runs the project's initScript (alixea-erp/component-bases).
# The code is not in the image: staging and production build the deployment's commit on its own machine, development
# runs the working copy
FROM public.ecr.aws/p8t2q7f4/alixea/component-bases/node26:v1

EXPOSE 5173

CMD ["npm", "run", "dev"]
