(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b10100010110101101100111)))
;; x should be Float32(0xCAD16B67 [Rational(-13724519, 2), -6862259.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (- (/ 917601837.0 256.0)))))
;; w should be Float32(0xCA5AC5F9 [Rational(-14337529, 4), -3584382.250000])

(assert (distinct x w))
(check-sat)
(exit)
