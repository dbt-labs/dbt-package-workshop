# dbt Packages You Didn't Know You Needed
![Coalesce 2022 Overview](https://user-images.githubusercontent.com/20958052/191366820-e39e606b-b081-4c09-9834-b2ff12164557.png)

This is the companion repo to the 2022 Coalesce New Orleans Workshop - [dbt Packages You Didn't Know You Needed](https://coalesce.getdbt.com/agenda/workshop-dbt-packages-you-didnt-know-you-needed)

## How to use this repo

The `dbt_package_workshop` project uses [dbt-demo-data](https://github.com/dbt-labs/dbt-demo-data) and was developed for BigQuery and Snowflake. It can be executed on any data platform for which there is a [dbt adapter](https://docs.getdbt.com/docs/supported-data-platforms), but may require modification.

Once you have dbt-demo-data available in your data warehouse of choice, update your source with the correct object names and you're ready to go. Follow along with the slides [here](#).

### Branches

There are four protected branches to serve as checkpoints during the workshop:
| Branch                         | Slide |
|--------------------------------|-------|
| `_checkpoint_1_start`          | [X](#) |
| `_checkpoint_2_add_new_source` | [X](#) |
| `_checkpoint_3_fix_new_source` | [X](#) |
| `_checkpoint_4_add_metrics`    | [X](#) |

## dbt Packages
One of the benefits of using dbt is the robust package ecosystem. As an analytics engineer, you can leverage vetted solutions to common problems distributed in packages and focus your own development efforts on your organization's unique business logic. The `dbt_package_workshop` project serves as an example of how to leverage dbt Labs maintained dbt packages [codegen](https://github.com/dbt-labs/dbt-codegen), [audit-helper](https://github.com/dbt-labs/dbt-audit-helper), and [metrics](https://github.com/dbt-labs/dbt_metrics) to speed your time-to-value when adding a new source table to an existing dbt project.

New to dbt packages? Read more about them [here](https://docs.getdbt.com/docs/building-a-dbt-project/package-management). Check out [dbt Hub](https://hub.getdbt.com/) to see the library of published dbt packages!

## Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support