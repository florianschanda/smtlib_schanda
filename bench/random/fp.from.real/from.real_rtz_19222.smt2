(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x (fp #b0 #b10010001 #b11100110100111110110000)))
;; x should be Float32(0x48F34FB0 [Rational(996603, 2), 498301.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (- (/ 72529.0 8.0)))))
;; w should be Float32(0xC60DA880 [Rational(-72529, 8), -9066.125000])

(assert (not (distinct x w)))
(check-sat)
(exit)
