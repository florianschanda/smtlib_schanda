(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.from.binary +normal)
;; binary interchange -> float
(declare-const x (_ BitVec 32))
(assert (= x #b00001000111111111101111001101101))
;; x should be 8ffde6d

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) x)))
;; y should be Float32(0x08FFDE6D [Rational(16768621, 10889035741470030830827987437816582766592), 0.000000])

(assert (= y (fp #b0 #b00010001 #b11111111101111001101101)))
(check-sat)
(exit)
