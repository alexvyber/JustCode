type LawChaos = "lawful" | "neutral" | "chaotic";
type GoodEvil = "good" | "neutral" | "evil";

type Alignment = `${LawChaos}-${GoodEvil}`;

const one: Alignment = "lawful-good";
// const two: Alignment = "good-evil";
