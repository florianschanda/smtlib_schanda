(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4DE5088E)))
;; x should be Float32(0x4DE5088E [Rational(480317888), 480317888.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (- 342020768.0))))
;; w should be Float32(0xCDA31695 [Rational(-342020768), -342020768.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
