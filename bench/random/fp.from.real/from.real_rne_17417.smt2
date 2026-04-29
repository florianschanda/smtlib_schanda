(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b00101000101010000001000)))
;; x should be Float32(0x00145408 [Rational(166529, 89202980794122492566142873090593446023921664), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (/ 475356211091227154315021443960484177641111115313049.0 254629497041810760783555711051172270131433549208242031329517556169297662470417088272924672.0))))
;; w should be Float32(0x00145408 [Rational(166529, 89202980794122492566142873090593446023921664), 0.000000])

(assert (= x w))
(check-sat)
(exit)
