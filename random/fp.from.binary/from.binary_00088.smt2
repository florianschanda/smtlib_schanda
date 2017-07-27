(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.from.binary -normal)
;; float -> binary interchange
(declare-const x Float32)
(assert (= x (fp #b1 #b00101010 #b10010000110001100011110)))
;; x should be Float32(0x9548631E [Rational(-6566287, 162259276829213363391578010288128), -0.000000])

(declare-const y (_ BitVec 32))
(assert (= ((_ to_fp 8 24) y) x))
;; y should be #b10010101010010000110001100011110

(assert (= y #b10010101010010000110001100011110))
(check-sat)
(exit)
