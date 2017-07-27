(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x (fp #b1 #b10010100 #b00001101111101011010110)))
;; x should be Float32(0xCA06FAD6 [Rational(-4423019, 2), -2211509.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (- (/ 6607923.0 8.0)))))
;; w should be Float32(0xC949A866 [Rational(-6607923, 8), -825990.375000])

(assert (distinct x w))
(check-sat)
(exit)
