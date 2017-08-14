(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x (fp #b1 #b11100111 #b11010100000000111001101)))
;; x should be Float32(0xF3EA01CD [Rational(-37079894686281394681877647851520), -37079894686281394681877647851520.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP 29119842810293050269967489693438.0)))
;; w should be Float32(0x73B7C5A5 [Rational(29119843519610830343942302597120), 29119843519610830343942302597120.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
