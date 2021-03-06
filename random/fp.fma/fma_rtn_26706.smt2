(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x9E066057)))
;; x should be Float32(0x9E066057 [Rational(-8806487, 1237940039285380274899124224), -0.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b11111111 #b11111110101000110001001)))
;; y should be Float32(NaN)

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #xCABB13F5)))
;; z should be Float32(0xCABB13F5 [Rational(-12260341, 2), -6130170.500000])

(declare-const result Float32)
(assert (= result (fp.fma RTN x y z)))
(assert (not (= result (_ NaN 8 24))))
(check-sat)
(exit)
