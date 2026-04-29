(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTP conversion of Float32(+normal) -> Float64
(declare-const x Float32)
(assert (= x (fp #b0 #b11100011 #b00110101011010111000011)))
;; x should be Float32(0x719AB5C3 [Rational(1532173694313649537441752678400), 1532173694313649537441752678400.000000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RTP x)))
;; y should be Float64(0x463356B860000000 [Rational(1532173694313649537441752678400), 1532173694313649537441752678400.000000])

(declare-const z Float64)
(assert (= z (fp #b0 #b10001100011 #b0011010101101011100001100000000000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
