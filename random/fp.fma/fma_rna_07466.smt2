(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x48BB7070)))
;; x should be Float32(0x48BB7070 [Rational(767751, 2), 383875.500000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #xFF7FFFFF)))
;; y should be Float32(0xFF7FFFFF [Rational(-340282346638528859811704183484516925440), -340282346638528859811704183484516925440.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x80721D27)))
;; z should be Float32(0x80721D27 [Rational(-7478567, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RNA x y z)))
(assert (= result ((_ to_fp 8 24) #xFF800000)))
(check-sat)
(exit)
