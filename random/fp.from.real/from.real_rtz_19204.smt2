(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4AC0F605)))
;; x should be Float32(0x4AC0F605 [Rational(12645893, 2), 6322946.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (- (/ 48378243.0 16.0)))))
;; w should be Float32(0xCA388C60 [Rational(-3023640), -3023640.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
