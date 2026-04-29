(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4AB20F3F)))
;; x should be Float32(0x4AB20F3F [Rational(11669311, 2), 5834655.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (/ 746835939.0 128.0))))
;; w should be Float32(0x4AB20F40 [Rational(5834656), 5834656.000000])

(assert (distinct x w))
(check-sat)
(exit)
