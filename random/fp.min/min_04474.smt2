(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b1 #b00110100 #b10010110001101000001000)))
;; x should be Float32(0x9A4B1A08 [Rational(-1663809, 39614081257132168796771975168), -0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x80000000)))
;; y should be Float32(-zero)

(declare-const result Float32)
(assert (= result (fp.min x y)))
(assert (= result (fp #b1 #b00110100 #b10010110001101000001000)))
(check-sat)
(exit)
