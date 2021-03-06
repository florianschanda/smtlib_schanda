(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x80431B18)))
;; x should be Float32(0x80431B18 [Rational(-549731, 89202980794122492566142873090593446023921664), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (- (/ 158344397.0 55751862996326557853839295681620903764951040000.0)))))
;; w should be Float32(0x801EED38 [Rational(-253351, 89202980794122492566142873090593446023921664), -0.000000])

(assert (distinct x w))
(check-sat)
(exit)
