(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x5EFFFEE4)))
;; x should be Float32(0x5EFFFEE4 [Rational(9223215906203631616), 9223215906203631616.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x00800000)))
;; y should be Float32(0x00800000 [Rational(1, 85070591730234615865843651857942052864), 0.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x039BA2D8)))
;; z should be Float32(0x039BA2D8 [Rational(1274971, 1393796574908163946345982392040522594123776), 0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RNA x y z)))
(assert (not (= result (fp #b0 #b00111111 #b11111111111111011100100))))
(check-sat)
(exit)
