(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b11000101001001011111000)))
;; x should be Float32(0x006292F8 [Rational(807519, 89202980794122492566142873090593446023921664), 0.000000])

(declare-const y Float32)
(assert (= y (_ +zero 8 24)))
;; y should be Float32(+zero)

(declare-const result Float32)
(assert (= result (fp.add RTP x y)))
(assert (not (= result ((_ to_fp 8 24) #x006292F8))))
(check-sat)
(exit)
