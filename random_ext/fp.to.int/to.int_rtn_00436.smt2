(set-info :smt-lib-version 2.6)
(set-logic QF_UFFPLIA)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.int RTN -inf)
(declare-const x Float32)
(assert (= x (_ -oo 8 24)))
;; x should be Float32(-oo)

(declare-const y Int)
(assert (= y (fp.to_int x)))
;; y should be unspecified

(declare-const z Int)
(assert (= z (- 555198339167548336938294628106459969059)))
(assert (= y z))
