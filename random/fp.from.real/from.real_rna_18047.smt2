(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xFF800000)))
;; x should be Float32(-oo)

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA 285438006173843456230918609217450672401.0)))
;; w should be Float32(0x7F56BD5C [Rational(285438001185918615176885977853334650880), 285438001185918615176885977853334650880.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
