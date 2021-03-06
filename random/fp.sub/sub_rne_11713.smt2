(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b0 #b11111111 #b10001000000110100010001)))
;; x should be Float32(NaN)

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x8062D180)))
;; y should be Float32(0x8062D180 [Rational(-50595, 5575186299632655785383929568162090376495104), -0.000000])

(declare-const result Float32)
(assert (= result (fp.sub RNE x y)))
(assert (not (= result (_ NaN 8 24))))
(check-sat)
(exit)
