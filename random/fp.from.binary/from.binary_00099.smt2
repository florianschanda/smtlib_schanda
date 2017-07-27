(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.from.binary -subnormal)
;; binary interchange -> float
(declare-const x (_ BitVec 32))
(assert (= x #b10000000010011001101111111000110))
;; x should be 804cdfc6

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) x)))
;; y should be Float32(0x804CDFC6 [Rational(-2519011, 356811923176489970264571492362373784095686656), -0.000000])

(assert (not (= y (fp #b1 #b00000000 #b10011001101111111000110))))
(check-sat)
(exit)
