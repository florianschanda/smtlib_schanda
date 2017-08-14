(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.from.binary +halfpoint)
;; binary interchange -> float
(declare-const x (_ BitVec 32))
(assert (= x #b01001010001101011000101101010010))
;; x should be 4a358b52

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) x)))
;; y should be Float32(0x4A358B52 [Rational(5948841, 2), 2974420.500000])

(assert (= y (fp #b0 #b10010100 #b01101011000101101010010)))
(check-sat)
(exit)
