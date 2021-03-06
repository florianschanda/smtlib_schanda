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
(assert (= y ((_ to_fp 8 24) #x804B34A8)))
;; y should be Float32(0x804B34A8 [Rational(-616085, 89202980794122492566142873090593446023921664), -0.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #xCABC495D)))
;; z should be Float32(0xCABC495D [Rational(-12339549, 2), -6169774.500000])

(declare-const result Float32)
(assert (= result (fp.fma RTZ x y z)))
(assert (= result (fp #b0 #b11111111 #b00000000000000000000000)))
(check-sat)
(exit)
