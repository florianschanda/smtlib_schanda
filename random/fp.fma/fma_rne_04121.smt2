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
(assert (= y (fp #b0 #b10111011 #b10011001100011101001111)))
;; y should be Float32(0x5DCCC74F [Rational(1844481195690164224), 1844481195690164224.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x976CB63E)))
;; z should be Float32(0x976CB63E [Rational(-7756575, 10141204801825835211973625643008), -0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RNE x y z)))
(assert (= result (_ -oo 8 24)))
(check-sat)
(exit)
