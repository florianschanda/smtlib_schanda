(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x71E34A79)))
;; x should be Float32(0x71E34A79 [Rational(2250980132686119692368781246464), 2250980132686119692368781246464.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN 2250980283801847144197428084738.0)))
;; w should be Float32(0x71E34A7A [Rational(2250980283801847144197428084736), 2250980283801847144197428084736.000000])

(assert (distinct x w))
(check-sat)
(exit)
