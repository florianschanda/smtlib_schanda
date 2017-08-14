(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.from.binary +halfpoint)
;; binary interchange -> float
(declare-const x (_ BitVec 32))
(assert (= x #b01001010010101000100000100101110))
;; x should be 4a54412e

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) x)))
;; y should be Float32(0x4A54412E [Rational(6955159, 2), 3477579.500000])

(assert (not (= y (fp #b0 #b10010100 #b10101000100000100101110))))
(check-sat)
(exit)
