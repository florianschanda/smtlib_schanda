(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x7F800000)))
;; x should be Float32(+oo)

(declare-const y Float32)
(assert (= y (fp #b1 #b11110110 #b10001000101001011101000)))
;; y should be Float32(0xFB4452E8 [Rational(-1019371722794028961493062657329070080), -1019371722794028961493062657329070080.000000])

(declare-const result Float32)
(assert (= result (fp.div RNA x y)))
(assert (= result ((_ to_fp 8 24) #xFF800000)))
(check-sat)
(exit)
