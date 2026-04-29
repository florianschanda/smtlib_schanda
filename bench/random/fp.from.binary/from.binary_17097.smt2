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
(assert (= x #b01111100010010010000100101000011))
;; x should be 7c490943

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) x)))
;; y should be Float32(0x7C490943 [Rational(4175358074155286696316256219517943808), 4175358074155286696316256219517943808.000000])

(assert (= y (fp #b0 #b11111000 #b10010010000100101000011)))
(check-sat)
(exit)
