import org.scalatest._

import de.csmath.math.Egcd._

class EgcdSpec extends FlatSpec with Matchers {
  "egcd" should "be correct" in {
    egcd(1769,551) should === (5,-16,29)
  }
}
