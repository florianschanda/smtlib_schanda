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
(assert (= x #b01111001000100001101100100010111))
;; x should be 7910d917

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) x)))
;; y should be Float32(0x7910D917 [Rational(47005865797546588691884542277976064), 47005865797546588691884542277976064.000000])

(assert (= y (fp #b0 #b11110010 #b00100001101100100010111)))
(check-sat)
(exit)
