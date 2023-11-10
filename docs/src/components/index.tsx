import React from "react";
import clsx from "clsx";
import styles from "./styles.module.css";

type PR = {
  title: string;
  img: string;
  description: JSX.Element;
};

const PRs: PR[] = [
  {
    title: "Simple",
    img: "pr-1.png",
    description: (
      <>No settings are required. All you need are the contents themselves.</>
    ),
  },
  {
    title: "Inline widgets",
    img: "pr-2.png",
    description: <>You can easily insert Flutter widgets into Markdown.</>,
  },
  {
    title: "Ready to use",
    img: "pr-3.png",
    description: (
      <>If Flutter is already installed, let's get started right away.</>
    ),
  },
];

function PRItem({ title, img, description }: PR) {
  return (
    <div className={clsx("col col--4")}>
      <div className="text--center">
        <img src={"img/" + img} width="40%" />
      </div>
      <div className="text--center padding-horiz--md">
        <h3>{title}</h3>
        <p>{description}</p>
      </div>
    </div>
  );
}

export default function PRList(): JSX.Element {
  return (
    <section className={styles.features}>
      <div className="container">
        <div className="row">
          {PRs.map((props, idx) => (
            <PRItem key={idx} {...props} />
          ))}
        </div>
      </div>
    </section>
  );
}
