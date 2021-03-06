(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b1 #b01001010 #b10110010111100001010011)))
;; x should be Float32(0xA5597853 [Rational(-14252115, 75557863725914323419136), -0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x80000001)))
;; y should be Float32(0x80000001 [Rational(-1, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const result Float32)
(assert (= result (fp.div RTN x y)))
(assert (= result ((_ to_fp 8 24) #x6FD97853)))
(check-sat)
(exit)
