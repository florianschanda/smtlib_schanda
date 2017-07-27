(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.from.binary +normal)
;; float -> binary interchange
(declare-const x Float32)
(assert (= x (fp #b0 #b00010001 #b11111111101111001101101)))
;; x should be Float32(0x08FFDE6D [Rational(16768621, 10889035741470030830827987437816582766592), 0.000000])

(declare-const y (_ BitVec 32))
(assert (= ((_ to_fp 8 24) y) x))
;; y should be #b00001000111111111101111001101101

(assert (= y #b00001000111111111101111001101101))
(check-sat)
(exit)
