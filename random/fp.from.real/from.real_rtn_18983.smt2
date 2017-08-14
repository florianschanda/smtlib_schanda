(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b1 #b10010100 #b11101000000000001011110)))
;; x should be Float32(0xCA74005E [Rational(-7995439, 2), -3997719.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (- (/ 799543889.0 200.0)))))
;; w should be Float32(0xCA74005E [Rational(-7995439, 2), -3997719.500000])

(assert (= x w))
(check-sat)
(exit)
