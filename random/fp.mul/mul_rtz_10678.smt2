(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x6F194425)))
;; x should be Float32(0x6F194425 [Rational(47433588185959456475644428288), 47433588185959456475644428288.000000])

(declare-const y Float32)
(assert (= y (_ -oo 8 24)))
;; y should be Float32(-oo)

(declare-const result Float32)
(assert (= result (fp.mul RTZ x y)))
(assert (= result ((_ to_fp 8 24) #xFF800000)))
(check-sat)
(exit)
