(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x (fp #b0 #b10100001 #b01000100111000111101100)))
;; x should be Float32(0x50A271EC [Rational(21802999808), 21802999808.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE 21803000834.0)))
;; w should be Float32(0x50A271ED [Rational(21803001856), 21803001856.000000])

(assert (distinct x w))
(check-sat)
(exit)
