(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.int RTN -halfpoint)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010011 #b10110001011111000010100)))
;; x should be Float32(0xC9D8BE14 [Rational(-3551109, 2), -1775554.500000])

(declare-const y Int)
(assert (= y (fp.to_int x)))
;; y should be -1775555

(declare-const z Int)
(assert (= z (- 1775555)))
(assert (not (= y z)))
