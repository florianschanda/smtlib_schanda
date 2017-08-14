(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x (_ -oo 8 24)))
;; x should be Float32(-oo)

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (- 231056958159229586428494027114917458428.0))))
;; w should be Float32(0xFF2DD3F4 [Rational(-231056966815884585649561999283278839808), -231056966815884585649561999283278839808.000000])

(assert (distinct x w))
(check-sat)
(exit)
