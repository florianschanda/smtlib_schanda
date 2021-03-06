(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b0 #b11010111 #b11101101100101101000110)))
;; x should be Float32(0x6BF6CB46 [Rational(596711366586612949249425408), 596711366586612949249425408.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x7F800000)))
;; y should be Float32(+oo)

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x807FFFFF)))
;; z should be Float32(0x807FFFFF [Rational(-8388607, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTN x y z)))
(assert (= result (fp #b0 #b11111111 #b00000000000000000000000)))
(check-sat)
(exit)
