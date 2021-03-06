(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (_ -oo 8 24)))
;; x should be Float32(-oo)

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x80649FD1)))
;; y should be Float32(0x80649FD1 [Rational(-6594513, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const z Float32)
(assert (= z (fp #b0 #b00110110 #b10111111111010111010000)))
;; z should be Float32(0x1B5FF5D0 [Rational(917341, 4951760157141521099596496896), 0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RNA x y z)))
(assert (= result ((_ to_fp 8 24) #x7F800000)))
(check-sat)
(exit)
