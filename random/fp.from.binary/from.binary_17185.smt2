(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.from.binary -normal)
;; binary interchange -> float
(declare-const x (_ BitVec 32))
(assert (= x #b11100110000100001001101011001100))
;; x should be e6109acc

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) x)))
;; y should be Float32(0xE6109ACC [Rational(-170719067967440979755008), -170719067967440979755008.000000])

(assert (not (= y (fp #b1 #b11001100 #b00100001001101011001100))))
(check-sat)
(exit)
