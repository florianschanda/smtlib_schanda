(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x (fp #b1 #b10010100 #b00001101111101011010110)))
;; x should be Float32(0xCA06FAD6 [Rational(-4423019, 2), -2211509.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (- (/ 141536627.0 64.0)))))
;; w should be Float32(0xCA06FAD7 [Rational(-8846039, 4), -2211509.750000])

(assert (distinct x w))
(check-sat)
(exit)
