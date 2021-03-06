(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x79D2F4F1)))
;; x should be Float32(0x79D2F4F1 [Rational(136918792777846343410025925317754880), 136918792777846343410025925317754880.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x807FFFFF)))
;; y should be Float32(0x807FFFFF [Rational(-8388607, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const z Float32)
(assert (= z (_ -oo 8 24)))
;; z should be Float32(-oo)

(declare-const result Float32)
(assert (= result (fp.fma RNA x y z)))
(assert (= result (_ -oo 8 24)))
(check-sat)
(exit)
