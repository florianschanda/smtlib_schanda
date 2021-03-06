(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x9D94E1A9)))
;; x should be Float32(0x9D94E1A9 [Rational(-9757097, 2475880078570760549798248448), -0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x002858F3)))
;; y should be Float32(0x002858F3 [Rational(2644211, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x802ACEAF)))
;; z should be Float32(0x802ACEAF [Rational(-2805423, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RNE x y z)))
(assert (= result ((_ to_fp 8 24) #x802ACEAF)))
(check-sat)
(exit)
