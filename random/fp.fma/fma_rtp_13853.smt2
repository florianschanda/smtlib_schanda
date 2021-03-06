(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x00000000)))
;; x should be Float32(+zero)

(declare-const y Float32)
(assert (= y (fp #b0 #b01100101 #b11100110100011100011011)))
;; y should be Float32(0x32F3471B [Rational(15943451, 562949953421312), 0.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x4A63024E)))
;; z should be Float32(0x4A63024E [Rational(7438631, 2), 3719315.500000])

(declare-const result Float32)
(assert (= result (fp.fma RTP x y z)))
(assert (= result (fp #b0 #b10010100 #b11000110000001001001110)))
(check-sat)
(exit)
