(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x007EB978)))
;; x should be Float32(0x007EB978 [Rational(1038127, 89202980794122492566142873090593446023921664), 0.000000])

(declare-const y Float32)
(assert (= y (_ NaN 8 24)))
;; y should be Float32(NaN)

(declare-const result Float32)
(assert (= result (fp.div RNE x y)))
(assert (= result (_ NaN 8 24)))
(check-sat)
(exit)
