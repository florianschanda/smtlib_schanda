(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010011 #b10010011111100110011100)))
;; x should be Float32(0xC9C9F99C [Rational(-3309159, 2), -1654579.500000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x80000000)))
;; y should be Float32(-zero)

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #xFFF7EA5E)))
;; z should be Float32(NaN)

(declare-const result Float32)
(assert (= result (fp.fma RTZ x y z)))
(assert (= result (_ NaN 8 24)))
(check-sat)
(exit)
