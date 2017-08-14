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
(assert (= x ((_ to_fp 8 24) #x7C490943)))
;; x should be Float32(0x7C490943 [Rational(4175358074155286696316256219517943808), 4175358074155286696316256219517943808.000000])

(declare-const y (_ BitVec 32))
(assert (= ((_ to_fp 8 24) y) x))
;; y should be #b01111100010010010000100101000011

(assert (= y #b01111100010010010000100101000011))
(check-sat)
(exit)
