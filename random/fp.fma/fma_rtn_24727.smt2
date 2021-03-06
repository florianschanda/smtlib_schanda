(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xFF800000)))
;; x should be Float32(-oo)

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x80000000)))
;; y should be Float32(-zero)

(declare-const z Float32)
(assert (= z (fp #b0 #b11111110 #b00011001110101011110100)))
;; z should be Float32(0x7F0CEAF4 [Rational(187311865782728662879192567709599531008), 187311865782728662879192567709599531008.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTN x y z)))
(assert (= result (fp #b1 #b11111111 #b11111111111111111111111)))
(check-sat)
(exit)
