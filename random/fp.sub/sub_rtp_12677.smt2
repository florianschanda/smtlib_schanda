(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b00000000000000000000000)))
;; x should be Float32(-zero)

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #xCA817BA9)))
;; y should be Float32(0xCA817BA9 [Rational(-8485801, 2), -4242900.500000])

(declare-const result Float32)
(assert (= result (fp.sub RTP x y)))
(assert (= result ((_ to_fp 8 24) #x4A817BA9)))
(check-sat)
(exit)
